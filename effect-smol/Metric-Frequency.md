Package: `effect`<br />
Module: `Metric`<br />

## Metric.Frequency

A Frequency metric interface that counts occurrences of discrete string values.

Frequency metrics are ideal for tracking categorical data where you want to count
how many times specific string values occur, such as HTTP status codes, user actions,
error types, or any discrete string-based events.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class FrequencyInterfaceError
  extends Data.TaggedError("FrequencyInterfaceError")<{
    readonly operation: string
  }>
{}

// Function that accepts any Frequency metric
const logFrequencyMetric = (freq: Metric.Frequency) =>
  Effect.gen(function*() {
    const state = yield* Metric.value(freq)

    yield* Effect.log(`Frequency Metric: ${freq.id}`)
    yield* Effect.log(`Description: ${freq.description ?? "No description"}`)
    yield* Effect.log(`Type: ${freq.type}`) // "Frequency"

    // Access the frequency state
    const occurrences: ReadonlyMap<string, number> = state.occurrences
    yield* Effect.log(`Total unique values: ${occurrences.size}`)

    // Iterate through all occurrences
    for (const [value, count] of occurrences) {
      yield* Effect.log(`  "${value}": ${count} occurrences`)
    }

    // Find most frequent value
    let maxCount = 0
    let mostFrequent = ""
    for (const [value, count] of occurrences) {
      if (count > maxCount) {
        maxCount = count
        mostFrequent = value
      }
    }

    return { mostFrequent, maxCount, totalUniqueValues: occurrences.size }
  })

const program = Effect.gen(function*() {
  // Create frequency metrics
  const statusCodes: Metric.Frequency = Metric.frequency("http_status", {
    description: "HTTP status code frequency"
  })

  const userActions: Metric.Frequency = Metric.frequency("user_actions", {
    description: "User action frequency"
  })

  // Record some occurrences
  yield* Metric.update(statusCodes, "200")
  yield* Metric.update(statusCodes, "200")
  yield* Metric.update(statusCodes, "404")
  yield* Metric.update(statusCodes, "500")
  yield* Metric.update(statusCodes, "200")

  yield* Metric.update(userActions, "login")
  yield* Metric.update(userActions, "view_dashboard")
  yield* Metric.update(userActions, "login")

  // Use the function with different frequency metrics
  const statusAnalysis = yield* logFrequencyMetric(statusCodes)
  const actionAnalysis = yield* logFrequencyMetric(userActions)

  return { statusAnalysis, actionAnalysis }
})
```

**Signature**

```ts
export interface Frequency extends Metric<string, FrequencyState> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L452)

Since v2.0.0