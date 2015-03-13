Xweston - Xwayland with weston
==============================

Introduction
------------
While it is possible to run X clients in Weston by loading the xwayland.so
module, running X display managers and window managers in an ordinary Weston
session doesn't work because Weston normally uses its own window manager.
Xweston should allow one to run Xwayland as a bare X server (i.e. taking
over the root window) hosted by Weston.

Like Weston, Xweston can be started from within an existing X session, another
Wayland session, or standalone, i.e. a free VT.

Note: this is still experimental, there are many known issues and probably bugs.

Installing
----------

Xweston doesn't need any configuration, just run:

    # make install

to have it installed under /usr/local .
To specify an alternative prefix, like /usr, run

    # make PREFIX=/usr install

For packaging, add DESTDIR=<destination> as usual.

Usage
-----

Xweston can be started like any ordinary X server.

Some examples:

Using startx, this should also works from within a running X session:

    $ startx -- /usr/bin/Xweston

Using startx from within a running X session, passing extra commandline options to weston:

    $ WESTON_OPTS=--fullscreen startx -- /usr/bin/Xweston

Addong a dynamic seat from within a running LightDM session:

    # dm-tool add-seat xlocal xserver-command=/usr/bin/Xweston

Contributing
------------

Xweston is licensed under the GPL, version 2.
Its source code is hosted on Github: https://github.com/ackalker/Xweston

Please feel free to report any issues, make feature requests or contribute
to the Wiki.

License
-------

Released under the MIT license. Copyright (c) 2014-2015 Alain Kalker.
