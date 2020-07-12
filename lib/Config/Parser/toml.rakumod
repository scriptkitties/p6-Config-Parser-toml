#! /usr/bin/env false

use v6.d;

use Config::Parser;
use Config::TOML;

unit class Config::Parser::toml is Config::Parser;

method read(IO() $path --> Hash)
{
	from-toml($path.slurp);
}

method write(IO() $path, Hash $config --> Bool)
{
	$path.spurt(to-toml($config));

	True;
}
