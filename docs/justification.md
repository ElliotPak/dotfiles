# Justification for my choices

This will be my attempt to absolve myself of my sins for writing some hot garbage.

# Why do you use bar-info instead of the built-in polybar widgets?

I can use the script with any bar, and it also allows me to use it in non-bar
contexts (see `bin/bar-info`).

## Why did you reinvent the wheel with propogate-colours, theme, etc?

I wasn't aware that wal could do what it did at the time, but I intend on
having an infinitely better solution to this when I get around to it. For now,
it's just gonna be held together with duct tape.

## Why did you split up your keybindings into sxhkd?

If I plan on using another window manager, I won't have to manage multiple sets
of keybindings for stuff that's window manager-independent.

## Why does your mpd run on port 6601?

It was the only way I could get it working at the time, more or less. Now
I think I could go back and change it but I don't really care enough to do it.

## Why does your Redshift always make light warmer?

Whenever I boot back into Windows, it can mess up the time of my Linux
installation, from what I remember. Also, when I did that, I had no idea how
cron worked. I'll probably change it at some point but right now, it's not
necessarily broke so its not being fixed.

---

Realistically, everyone's rice is going to have some weird quirks, and these
are mine. The process of figuring out a good config is never-ending, so
there'll always be some. Once these ones are fixed, a new set will emerge, so
stay tuned for that, if you want?
