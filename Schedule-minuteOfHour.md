# minuteOfHour

Cron-like schedule that recurs every specified `minute` of each hour. It
triggers at zero second of the minute. Producing a count of repeats: 0, 1, 2.

NOTE: `minute` parameter is validated lazily. Must be in range 0...59.

Part of the `Schedule` module from the `@effect/io` package. Also known as `Schedule.minuteOfHour`.
