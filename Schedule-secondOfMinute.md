# secondOfMinute

Cron-like schedule that recurs every specified `second` of each minute. It
triggers at zero nanosecond of the second. Producing a count of repeats: 0,
1, 2.

NOTE: `second` parameter is validated lazily. Must be in range 0...59.

Part of the `Schedule` module from the `@effect/io` package. Also known as `Schedule.secondOfMinute`.
