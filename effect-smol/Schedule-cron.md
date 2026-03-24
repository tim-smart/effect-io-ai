Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.cron

Returns a new `Schedule` that recurs on the specified `Cron` schedule and
outputs the duration between recurrences.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class ScheduledTaskError extends Data.TaggedError("ScheduledTaskError")<{ readonly message: string }> {}

// Run every minute
const everyMinute = Schedule.cron("* * * * *")

const minutelyProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log(`Minutely task at ${new Date().toISOString()}`)
      return "minute"
    }),
    everyMinute.pipe(
      Schedule.take(3), // Run only 3 times for demo
      Schedule.tapOutput((duration) =>
        Console.log(`Next execution in: ${duration}`)
      )
    )
  )
})

// Run every day at 2:30 AM
const dailyBackup = Schedule.cron("30 2 * * *")

const backupProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Running daily backup...")
      // Simulate backup process
      yield* Effect.sleep("2 seconds")
      yield* Console.log("Backup completed")
      return "backup-done"
    }),
    dailyBackup.pipe(
      Schedule.take(2) // Run 2 times for demo
    )
  )
})

// Run every Monday at 9:00 AM with timezone
const weeklyReport = Schedule.cron("0 9 * * 1", "America/New_York")

const reportProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Generating weekly report...")
      const report = {
        week: Math.floor(Date.now() / (7 * 24 * 60 * 60 * 1000)),
        timestamp: new Date().toISOString()
      }
      yield* Console.log(`Report generated: ${JSON.stringify(report)}`)
      return report
    }),
    weeklyReport.pipe(Schedule.take(1))
  )
})

// Run every 15 minutes during business hours (9 AM - 5 PM)
const businessHoursCheck = Schedule.cron("0,15,30,45 9-17 * * 1-5")

const businessProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Business hours health check...")
      const status = Math.random() > 0.1 ? "healthy" : "degraded"
      yield* Console.log(`System status: ${status}`)
      return status
    }),
    businessHoursCheck.pipe(
      Schedule.take(4) // Demo with 4 checks
    )
  )
})

// Run on specific days of the month
const monthlyInvoice = Schedule.cron("0 10 1,15 * *") // 1st and 15th at 10 AM

const invoiceProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Processing monthly invoices...")
      const invoiceCount = Math.floor(Math.random() * 100) + 50
      yield* Console.log(`Processed ${invoiceCount} invoices`)
      return { count: invoiceCount, date: new Date().toISOString() }
    }),
    monthlyInvoice.pipe(Schedule.take(1))
  )
})

// Complex cron with error handling
const complexCron = Schedule.cron("0 2,4,6 * * *").pipe(
  Schedule.tapOutput((duration) =>
    Console.log(`Scheduled to run again in ${duration}`)
  )
)

const robustProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Complex scheduled task...")
      // Simulate occasional failures
      if (Math.random() < 0.3) {
        return yield* Effect.fail(new ScheduledTaskError({ message: "Scheduled task failed" }))
      }
      return "success"
    }),
    complexCron.pipe(Schedule.take(3))
  ).pipe(
    Effect.catch((error: unknown) =>
      Console.log(`Cron task error: ${String(error)}`)
    )
  )
})
```

**Signature**

```ts
declare const cron: { (expression: Cron.Cron): Schedule<Duration.Duration, unknown, Cron.CronParseError>; (expression: string, tz?: string | DateTime.TimeZone): Schedule<Duration.Duration, unknown, Cron.CronParseError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1388)

Since v4.0.0