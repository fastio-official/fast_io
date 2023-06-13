#pragma once

namespace fast_io
{

namespace operations::decay
{

namespace defines
{

template<typename T,typename P>
concept has_output_stream_add_deco_filter_define = requires(T t,P p)
{
	output_stream_add_deco_filter_define(t,p);
};

template<typename T,typename P>
concept has_input_stream_add_deco_filter_define = requires(T t,P p)
{
	input_stream_add_deco_filter_define(t,p);
};

template<typename T,typename P>
concept has_io_stream_add_deco_filter_define = requires(T t,P p)
{
	io_stream_add_deco_filter_define(t,p);
};

template<typename T,typename P>
concept has_output_or_io_stream_add_deco_filter_define =
	has_output_stream_add_deco_filter_define<T,P>||has_io_stream_add_deco_filter_define<T,P>;

template<typename T,typename P>
concept has_input_or_io_stream_add_deco_filter_define =
	has_input_stream_add_deco_filter_define<T,P>||has_io_stream_add_deco_filter_define<T,P>;

}

template<typename T,typename... Args>
requires (::fast_io::operations::decay::defines::has_output_stream_add_deco_filter_define<T,Args>&&...)
inline constexpr void add_output_decos_decay(T t,Args ...args)
{
	if constexpr((::fast_io::operations::decay::defines::has_output_stream_add_deco_filter_define<T,Args>&&...))
	{
		(output_stream_add_deco_filter_define(t,args),...);
	}
	else
	{
		(io_stream_add_deco_filter_define(t,args),...);
	}
}

template<typename T,typename... Args>
requires (::fast_io::operations::decay::defines::has_input_stream_add_deco_filter_define<T,Args>&&...)
inline constexpr void add_input_decos_decay(T t,Args ...args)
{
	if constexpr((::fast_io::operations::decay::defines::has_input_stream_add_deco_filter_define<T,Args>&&...))
	{
		(input_stream_add_deco_filter_define(t,args),...);
	}
	else
	{
		(io_stream_add_deco_filter_define(t,args),...);
	}
}

template<typename T,typename... Args>
requires (::fast_io::operations::decay::defines::has_io_stream_add_deco_filter_define<T,Args>&&...)
inline constexpr void add_io_decos_decay(T t,Args ...args)
{
	(io_stream_add_deco_filter_define(t,args),...);
}

}


namespace operations
{

namespace defines
{

template<typename T>
concept has_input_stream_deco_filter_ref_define = requires(T&& t)
{
	input_stream_deco_filter_ref_define(t);
};

template<typename T>
concept has_output_stream_deco_filter_ref_define = requires(T&& t)
{
	output_stream_deco_filter_ref_define(t);
};

template<typename T>
concept has_io_stream_deco_filter_ref_define = requires(T&& t)
{
	io_stream_deco_filter_ref_define(t);
};

template<typename T>
concept has_input_or_io_stream_deco_filter_ref_define = has_input_stream_deco_filter_ref_define<T>||
					has_io_stream_deco_filter_ref_define<T>;

template<typename T>
concept has_output_or_io_stream_deco_filter_ref_define = has_output_stream_deco_filter_ref_define<T>||
					has_io_stream_deco_filter_ref_define<T>;

}

template<typename T>
requires (::fast_io::operations::defines::has_input_or_io_stream_deco_filter_ref_define<T>)
inline constexpr decltype(auto) input_stream_deco_filter_ref(T &&t)
{
	if constexpr(::fast_io::operations::defines::has_input_or_io_stream_deco_filter_ref_define<T>)
	{
		return input_stream_deco_filter_ref_define(t);
	}
	else
	{
		return io_deco_filter_ref_define(t);
	}
}

template<typename T>
requires (::fast_io::operations::defines::has_output_or_io_stream_deco_filter_ref_define<T>)
inline constexpr decltype(auto) output_stream_deco_filter_ref(T &&t)
{
	if constexpr(::fast_io::operations::defines::has_output_or_io_stream_deco_filter_ref_define<T>)
	{
		return output_stream_deco_filter_ref_define(t);
	}
	else
	{
		return io_deco_filter_ref_define(t);
	}
}

template<typename T>
requires (::fast_io::operations::defines::has_io_stream_deco_filter_ref_define<T>)
inline constexpr decltype(auto) io_stream_deco_filter_ref(T &&t)
{
	return io_stream_deco_filter_ref_define(t);
}

template<typename T,typename... Args>
inline constexpr void add_output_decos(T&& t,Args ...args)
{
	::fast_io::operations::decay::add_output_decos_decay(
		::fast_io::operations::output_stream_deco_filter_ref(t),args...);
}

template<typename T,typename... Args>
inline constexpr void add_input_decos(T&& t,Args ...args)
{
	::fast_io::operations::decay::add_input_decos_decay(
		::fast_io::operations::input_stream_deco_filter_ref(t),args...);
}

template<typename T,typename... Args>
inline constexpr void add_io_decos(T&& t,Args ...args)
{
	::fast_io::operations::decay::add_io_decos_decay(
		::fast_io::operations::io_stream_deco_filter_ref(t),args...);
}

}

}