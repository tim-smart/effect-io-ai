# dayOfWeek

Cron-like schedule that recurs every specified `day` of each week. It
triggers at zero hour of the week. Producing a count of repeats: 0, 1, 2.

NOTE: `day` parameter is validated lazily. Must be in range 1 (Monday)...7
(Sunday).

Part of the `Schedule` module from the `@effect/io` package. Also known as `Schedule.dayOfWeek`.
