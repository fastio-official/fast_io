#pragma once

namespace fast_io
{

namespace operations::decay::defines
{

template<typename T>
concept has_output_stream_seek_define = requires(T instm,::fast_io::intfpos_t pos,::fast_io::seekdir sdir)
{
	{output_stream_seek_define(instm,pos,sdir)}->::std::same_as<::fast_io::intfpos_t>;
};

template<typename T>
concept has_output_stream_seek_bytes_define = requires(T instm,::fast_io::intfpos_t pos,::fast_io::seekdir sdir)
{
	{output_stream_seek_bytes_define(instm,pos,sdir)}->::std::same_as<::fast_io::intfpos_t>;
};

template<typename T>
concept has_obuffer_basic_operations = requires(T instm,typename decltype(instm)::output_char_type *ptr)
{
	obuffer_begin(instm);
	obuffer_curr(instm);
	obuffer_end(instm);
	obuffer_set_curr(instm,ptr);
};

template<typename T>
concept has_write_some_overflow_define = requires(T instm,typename decltype(instm)::output_char_type const* ptr)
{
	write_some_overflow_define(instm,ptr,ptr);
};

template<typename T>
concept has_write_all_overflow_define = requires(T instm,typename decltype(instm)::output_char_type const* ptr)
{
	write_all_overflow_define(instm,ptr,ptr);
};

template<typename T>
concept has_write_until_eof_overflow_define = requires(T instm,typename decltype(instm)::output_char_type const* ptr)
{
	write_until_eof_overflow_define(instm,ptr,ptr);
};

template<typename T>
concept has_write_some_bytes_overflow_define = requires(T instm,::std::byte* ptr)
{
	write_some_bytes_overflow_define(instm,ptr,ptr);
};

template<typename T>
concept has_write_all_bytes_overflow_define = requires(T instm,::std::byte* ptr)
{
	write_all_bytes_overflow_define(instm,ptr,ptr);
};

template<typename T>
concept has_write_until_eof_bytes_overflow_define = requires(T instm,::std::byte* ptr)
{
	write_until_eof_bytes_overflow_define(instm,ptr,ptr);
};

template<typename T>
concept has_scatter_write_some_bytes_overflow_define = requires(T instm,::fast_io::io_scatter_t const *scatter,::std::size_t len)
{
	scatter_write_some_bytes_overflow_define(instm,scatter,len);
};

template<typename T>
concept has_scatter_write_all_bytes_overflow_define = requires(T instm,::fast_io::io_scatter_t const *scatter,::std::size_t len)
{
	scatter_write_all_bytes_overflow_define(instm,scatter,len);
};

template<typename T>
concept has_scatter_write_until_eof_bytes_overflow_define = requires(T instm,::fast_io::io_scatter_t const *scatter,::std::size_t len)
{
	scatter_write_until_eof_bytes_overflow_define(instm,scatter,len);
};

template<typename T>
concept has_scatter_write_some_overflow_define = requires(T instm,::fast_io::basic_io_scatter_t<typename decltype(instm)::output_char_type> *pscatter,::std::size_t len)
{
	scatter_write_some_overflow_define(instm,pscatter,len);
};

template<typename T>
concept has_scatter_write_all_overflow_define = requires(T instm,::fast_io::basic_io_scatter_t<typename decltype(instm)::output_char_type> *pscatter,::std::size_t len)
{
	scatter_write_all_overflow_define(instm,pscatter,len);
};

template<typename T>
concept has_scatter_write_until_eof_overflow_define = requires(T instm,::fast_io::basic_io_scatter_t<typename decltype(instm)::output_char_type> *pscatter,::std::size_t len)
{
	scatter_write_until_eof_overflow_define(instm,pscatter,len);
};

template<typename T>
concept has_obuffer_overflow_never_define = requires(T instm)
{
	obuffer_overflow_never_define(::fast_io::manipulators::output_stream_ref(instm));
};



template<typename T>
concept has_pwrite_some_bytes_overflow_define = requires(T instm,::std::byte* ptr)
{
	pwrite_some_bytes_overflow_define(instm,ptr,ptr,0);
};

template<typename T>
concept has_pwrite_all_bytes_overflow_define = requires(T instm,::std::byte* ptr)
{
	pwrite_all_bytes_overflow_define(instm,ptr,ptr,0);
};

template<typename T>
concept has_pwrite_until_eof_bytes_overflow_define = requires(T instm,::std::byte* ptr)
{
	pwrite_until_eof_bytes_overflow_define(instm,ptr,ptr,0);
};

template<typename T>
concept has_scatter_pwrite_some_bytes_overflow_define = requires(T instm,::fast_io::io_scatter_t const *scatter,::std::size_t len)
{
	scatter_pwrite_some_bytes_overflow_define(instm,scatter,len,0);
};

template<typename T>
concept has_scatter_pwrite_all_bytes_overflow_define = requires(T instm,::fast_io::io_scatter_t const *scatter,::std::size_t len)
{
	scatter_pwrite_all_bytes_overflow_define(instm,scatter,len,0);
};

template<typename T>
concept has_scatter_pwrite_until_eof_bytes_overflow_define = requires(T instm,::fast_io::io_scatter_t const *scatter,::std::size_t len)
{
	scatter_pwrite_until_eof_bytes_overflow_define(instm,scatter,len,0);
};


template<typename T>
concept has_pwrite_some_overflow_define = requires(T instm,typename decltype(instm)::output_char_type const* ptr)
{
	pwrite_some_overflow_define(instm,ptr,ptr,0);
};

template<typename T>
concept has_pwrite_all_overflow_define = requires(T instm,typename decltype(instm)::output_char_type const* ptr)
{
	pwrite_all_overflow_define(instm,ptr,ptr,0);
};

template<typename T>
concept has_pwrite_until_eof_overflow_define = requires(T instm,typename decltype(instm)::output_char_type const* ptr)
{
	pwrite_until_eof_overflow_define(instm,ptr,ptr,0);
};

template<typename T>
concept has_scatter_pwrite_some_overflow_define = requires(T instm,::fast_io::basic_io_scatter_t<typename decltype(instm)::output_char_type>* scatter,::std::size_t len)
{
	scatter_pwrite_some_overflow_define(instm,scatter,len,0);
};

template<typename T>
concept has_scatter_pwrite_all_overflow_define = requires(T instm,::fast_io::basic_io_scatter_t<typename decltype(instm)::output_char_type>* scatter,::std::size_t len)
{
	scatter_pwrite_all_overflow_define(instm,scatter,len,0);
};

template<typename T>
concept has_scatter_pwrite_until_eof_overflow_define = requires(T instm,::fast_io::basic_io_scatter_t<typename decltype(instm)::output_char_type>* scatter,::std::size_t len)
{
	scatter_pwrite_until_eof_overflow_define(instm,scatter,len,0);
};

template<typename stmtype>
concept has_any_of_write_bytes_operations =
	::fast_io::operations::decay::defines::has_write_some_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_write_all_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_write_until_eof_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_write_some_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_write_all_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_write_until_eof_bytes_overflow_define<stmtype>;

template<typename stmtype>
concept has_any_of_write_operations =
	::fast_io::operations::decay::defines::has_write_some_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_write_all_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_write_until_eof_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_write_some_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_write_all_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_write_until_eof_overflow_define<stmtype>;

template<typename stmtype>
concept has_any_of_pwrite_bytes_operations =
	::fast_io::operations::decay::defines::has_pwrite_some_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_pwrite_all_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_pwrite_until_eof_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_pwrite_some_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_pwrite_all_bytes_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_pwrite_until_eof_bytes_overflow_define<stmtype>;

template<typename stmtype>
concept has_any_of_pwrite_operations =
	::fast_io::operations::decay::defines::has_pwrite_some_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_pwrite_all_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_pwrite_until_eof_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_pwrite_some_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_pwrite_all_overflow_define<stmtype>||
	::fast_io::operations::decay::defines::has_scatter_pwrite_until_eof_overflow_define<stmtype>;

template<typename stmtype>
concept has_any_of_write_or_seek_pwrite_bytes_operations =
	::fast_io::operations::decay::defines::has_any_of_write_bytes_operations<stmtype>||
	(::fast_io::operations::decay::defines::has_output_stream_seek_bytes_define<stmtype>&&
	::fast_io::operations::decay::defines::has_any_of_pwrite_bytes_operations<stmtype>);

template<typename stmtype>
concept has_any_of_pwrite_or_seek_write_bytes_operations = 
	::fast_io::operations::decay::defines::has_any_of_pwrite_bytes_operations<stmtype>||
	(::fast_io::operations::decay::defines::has_output_stream_seek_bytes_define<stmtype>&&
	::fast_io::operations::decay::defines::has_any_of_write_bytes_operations<stmtype>);

template<typename stmtype>
concept has_any_of_write_or_seek_pwrite_operations =
	::fast_io::operations::decay::defines::has_any_of_write_operations<stmtype>||
	(::fast_io::operations::decay::defines::has_output_stream_seek_define<stmtype>&&
	::fast_io::operations::decay::defines::has_any_of_pwrite_operations<stmtype>);

}

}