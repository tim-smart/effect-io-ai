# raceFirst

Returns an effect that races this effect with the specified effect,
yielding the first result to complete, whether by success or failure. If
neither effect completes, then the composed effect will not complete.

WARNING: The raced effect will safely interrupt the "loser", but will not
resume until the loser has been cleanly terminated. If early return is
desired, then instead of performing `l raceFirst r`, perform
`l.disconnect raceFirst r.disconnect`, which disconnects left and right
interrupt signal, allowing a fast return, with interruption performed
in the background.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.raceFirst`.
