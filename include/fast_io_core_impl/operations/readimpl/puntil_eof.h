﻿#pragma once

#include "fast_io_core_impl/concepts/type.h"
#include "fast_io_core_impl/operations/refs/input_stream.h"
#include "fast_io_core_impl/operations/common.h"
#include "fast_io_core_impl/operations/seek.h"
#include "fast_io_core_impl/operations/readimpl/until_eof.h"
namespace fast_io
{

namespace details
{

template <typename instmtype>
#if __has_cpp_attribute(__gnu__::__cold__)
[[__gnu__::__cold__]]
#endif
inline constexpr typename instmtype::input_char_type *
pread_until_eof_cold_impl(instmtype insm, typename instmtype::input_char_type *first,
						  typename instmtype::input_char_type *last, ::fast_io::intfpos_t off)
{
	using char_type = typename instmtype::input_char_type;
	if constexpr (::fast_io::operations::decay::defines::has_pread_until_eof_underflow_define<instmtype>)
	{
		return pread_until_eof_underflow_define(insm, first, last, off);
	}
	else if constexpr (::fast_io::operations::decay::defines::has_scatter_pread_until_eof_underflow_define<instmtype>)
	{
		::std::size_t len{static_cast<::std::size_t>(last - first)};
		basic_io_scatter_t<char_type> sc{first, len};
		auto [position,
			  position_in_scatter]{scatter_pread_until_eof_underflow_define(insm, __builtin_addressof(sc), 1, off)};
		if (position)
		{
			return last;
		}
		return first + position_in_scatter;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_pread_some_underflow_define<instmtype>)
	{
		while (first != last)
		{
			auto nit{pread_some_underflow_define(insm, first, last, off)};
			off = ::fast_io::fposoffadd_nonegative(off, nit - first);
			if (nit == first || nit == last)
			{
				return nit;
			}
			first = nit;
		}
		return first;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_scatter_pread_some_underflow_define<instmtype>)
	{
		while (first != last)
		{
			::std::size_t len{static_cast<::std::size_t>(last - first)};
			basic_io_scatter_t<char_type> sc{first, len};
			auto ret{scatter_pread_some_bytes_underflow_define(insm, __builtin_addressof(sc), 1, off)};
			auto nit{first + ::fast_io::scatter_status_one_size(ret, len)};
			off = ::fast_io::fposoffadd_nonegative(off, nit - first);
			if (nit == first || nit == last)
			{
				return nit;
			}
			first = nit;
		}
		return first;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_pread_all_underflow_define<instmtype>)
	{
		pread_all_underflow_define(insm, first, last, off);
		return last;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_scatter_pread_all_underflow_define<instmtype>)
	{
		::std::size_t len{static_cast<::std::size_t>(last - first)};
		basic_io_scatter_t<char_type> sc{first, len};
		scatter_pread_all_underflow_define(insm, __builtin_addressof(sc), 1, off);
		return last;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_any_of_pread_bytes_operations<instmtype>)
	{
		return pread_until_eof_bytes_cold_impl(insm, reinterpret_cast<::std::byte *>(first),
											   reinterpret_cast<::std::byte *>(last), off);
	}
	else if constexpr (::fast_io::operations::decay::defines::has_input_or_io_stream_seek_define<instmtype> &&
					   ::fast_io::operations::decay::defines::has_any_of_pread_operations<instmtype>)
	{
		auto oldoff{::fast_io::operations::decay::input_stream_seek_decay(insm, 0, ::fast_io::seekdir::cur)};
		::fast_io::operations::decay::input_stream_seek_decay(insm, off, ::fast_io::seekdir::cur);
		first = ::fast_io::operations::decay::read_until_eof_decay(insm, first, last);
		::fast_io::operations::decay::input_stream_seek_decay(insm, oldoff, ::fast_io::seekdir::beg);
		return first;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_input_or_io_stream_seek_bytes_define<instmtype> &&
					   ::fast_io::operations::decay::defines::has_any_of_read_bytes_operations<instmtype>)
	{
		auto oldoff{::fast_io::operations::decay::input_stream_seek_bytes_decay(insm, 0, ::fast_io::seekdir::cur)};
		::fast_io::operations::decay::input_stream_seek_bytes_decay(insm, off, ::fast_io::seekdir::cur);
		first = ::fast_io::operations::decay::read_until_eof_decay(insm, first, last);
		::fast_io::operations::decay::input_stream_seek_bytes_decay(insm, oldoff, ::fast_io::seekdir::beg);
		return first;
	}
}

template <typename instmtype>
#if __has_cpp_attribute(__gnu__::__cold__)
[[__gnu__::__cold__]]
#endif
inline constexpr ::std::byte *pread_until_eof_bytes_cold_impl(instmtype insm, ::std::byte *first, ::std::byte *last,
															  ::fast_io::intfpos_t off)
{
	using char_type = typename instmtype::input_char_type;
	if constexpr (::fast_io::operations::decay::defines::has_pread_until_eof_bytes_underflow_define<instmtype>)
	{
		return pread_until_eof_bytes_underflow_define(insm, first, last, off);
	}
	else if constexpr (::fast_io::operations::decay::defines::has_scatter_pread_until_eof_bytes_underflow_define<
						   instmtype>)
	{
		::std::size_t len{static_cast<::std::size_t>(last - first)};
		basic_io_scatter_t<char_type> sc{first, len};
		auto [position, position_in_scatter]{
			scatter_pread_until_eof_bytes_underflow_define(insm, __builtin_addressof(sc), 1, off)};
		if (position)
		{
			return last;
		}
		return first + position_in_scatter;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_pread_some_bytes_underflow_define<instmtype>)
	{
		while (first != last)
		{
			auto nit{pread_some_bytes_underflow_define(insm, first, last, off)};
			if (nit == first || nit == last)
			{
				return nit;
			}
			off = ::fast_io::fposoffadd_nonegative(off, nit - first);
			first = nit;
		}
		return first;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_scatter_pread_some_bytes_underflow_define<instmtype>)
	{
		while (first != last)
		{
			::std::size_t len{static_cast<::std::size_t>(last - first)};
			io_scatter_t sc{first, len};
			::std::size_t sz{::fast_io::scatter_status_one_size(
				scatter_pread_some_bytes_underflow_define(insm, __builtin_addressof(sc), 1, off), len)};
			auto nit = first + sz;
			if (nit == first || nit == last)
			{
				return nit;
			}
			off = ::fast_io::fposoffadd_nonegative(off, sz);
			first = nit;
		}
		return first;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_pread_all_bytes_underflow_define<instmtype>)
	{
		pread_all_bytes_underflow_define(insm, first, last, off);
		return last;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_scatter_pread_all_bytes_underflow_define<instmtype>)
	{
		io_scatter_t sc{first, static_cast<::std::size_t>(last - first)};
		scatter_pread_all_bytes_underflow_define(insm, __builtin_addressof(sc), 1, off);
		return last;
	}
	else if constexpr (sizeof(char_type) == 1 &&
					   (::fast_io::operations::decay::defines::has_any_of_pread_operations<instmtype>))
	{
		using char_type_ptr
#if __has_cpp_attribute(__gnu__::__may_alias__)
			[[__gnu__::__may_alias__]]
#endif
			= char_type *;
		char_type_ptr firstcptr{reinterpret_cast<char_type_ptr>(first)};
		char_type_ptr lastcptr{reinterpret_cast<char_type_ptr>(last)};
		return ::fast_io::details::pread_until_eof_cold_impl(insm, firstcptr, lastcptr, off);
	}
	else if constexpr (::fast_io::operations::decay::defines::has_input_or_io_stream_seek_bytes_define<instmtype> &&
					   ::fast_io::operations::decay::defines::has_any_of_read_bytes_operations<instmtype>)
	{
		auto oldoff{::fast_io::operations::decay::input_stream_seek_bytes_decay(insm, 0, ::fast_io::seekdir::cur)};
		::fast_io::operations::decay::input_stream_seek_bytes_decay(insm, off, ::fast_io::seekdir::cur);
		first = ::fast_io::operations::decay::read_until_eof_bytes_decay(insm, first, last);
		::fast_io::operations::decay::input_stream_seek_bytes_decay(insm, oldoff, ::fast_io::seekdir::beg);
		return first;
	}
	else if constexpr (::fast_io::operations::decay::defines::has_input_or_io_stream_seek_define<instmtype> &&
					   ::fast_io::operations::decay::defines::has_any_of_read_operations<instmtype>)
	{
		auto oldoff{::fast_io::operations::decay::input_stream_seek_decay(insm, 0, ::fast_io::seekdir::cur)};
		::fast_io::operations::decay::input_stream_seek_decay(insm, off, ::fast_io::seekdir::cur);
		first = ::fast_io::operations::decay::read_until_eof_bytes_decay(insm, first, last);
		::fast_io::operations::decay::input_stream_seek_decay(insm, oldoff, ::fast_io::seekdir::beg);
		return first;
	}
}

} // namespace details

namespace operations::decay
{

template <typename instmtype>
inline constexpr void pread_until_eof_decay(instmtype insm, typename instmtype::input_char_type *first,
											typename instmtype::input_char_type *last, ::fast_io::intfpos_t off)
{
	if constexpr (::fast_io::operations::decay::defines::has_input_or_io_stream_mutex_ref_define<instmtype>)
	{
		::fast_io::operations::decay::stream_ref_decay_lock_guard lg{
			::fast_io::operations::decay::input_stream_mutex_ref_decay(insm)};
		return ::fast_io::operations::decay::pread_until_eof_decay(
			::fast_io::operations::decay::input_stream_unlocked_ref_decay(insm), first, last, off);
	}
	else
	{
		if constexpr (::fast_io::operations::decay::defines::has_ibuffer_basic_operations<instmtype>)
		{
			off = ::fast_io::details::adjust_instm_offset(ibuffer_end(insm) - ibuffer_curr(insm));
		}
		return ::fast_io::details::pread_until_eof_cold_impl(insm, first, last, off);
	}
}

template <typename instmtype>
inline constexpr void pread_until_eof_bytes_decay(instmtype insm, ::std::byte *first, ::std::byte *last,
												  ::fast_io::intfpos_t off)
{
	if constexpr (::fast_io::operations::decay::defines::has_input_or_io_stream_mutex_ref_define<instmtype>)
	{
		::fast_io::operations::decay::stream_ref_decay_lock_guard lg{
			::fast_io::operations::decay::input_stream_mutex_ref_decay(insm)};
		return ::fast_io::operations::decay::pread_until_eof_bytes_decay(
			::fast_io::operations::decay::input_stream_unlocked_ref_decay(insm), first, last, off);
	}
	else
	{
		if constexpr (::fast_io::operations::decay::defines::has_ibuffer_basic_operations<instmtype>)
		{
			off = ::fast_io::details::adjust_instm_offset(ibuffer_end(insm) - ibuffer_curr(insm));
		}
		return ::fast_io::details::pread_until_eof_bytes_cold_impl(insm, first, last, off);
	}
}

} // namespace operations::decay

} // namespace fast_io
