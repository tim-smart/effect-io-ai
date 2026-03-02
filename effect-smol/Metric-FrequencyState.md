Package: `effect`<br />
Module: `Metric`<br />

## Metric.FrequencyState

State interface for Frequency metrics containing occurrence counts for discrete string values.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class FrequencyStateError extends Data.TaggedError("FrequencyStateError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create frequency metrics for different categories
  const statusCodeFreq = Metric.frequency("http_status_codes", {
    description: "HTTP status code distribution"
  })

  const userActionFreq = Metric.frequency("user_actions", {
    description: "User action frequency"
  })

  // Record occurrences
  yield* Metric.update(statusCodeFreq, "200") // Success
  yield* Metric.update(statusCodeFreq, "200") // Another success
  yield* Metric.update(statusCodeFreq, "404") // Not found
  yield* Metric.update(statusCodeFreq, "500") // Server error
  yield* Metric.update(statusCodeFreq, "200") // Another success

  yield* Metric.update(userActionFreq, "login")
  yield* Metric.update(userActionFreq, "click")
  yield* Metric.update(userActionFreq, "login")
  yield* Metric.update(userActionFreq, "scroll")
  yield* Metric.update(userActionFreq, "click")
  yield* Metric.update(userActionFreq, "click")

  // Read frequency states
  const statusState: Metric.FrequencyState = yield* Metric.value(statusCodeFreq)
  const actionState: Metric.FrequencyState = yield* Metric.value(userActionFreq)

  // FrequencyState contains:
  // - occurrences: ReadonlyMap<string, number> with string values and their counts

  // Analyze frequency distributions
  const getMostFrequent = (occurrences: ReadonlyMap<string, number>) => {
    let maxKey = ""
    let maxCount = 0
    for (const [key, count] of occurrences) {
      if (count > maxCount) {
        maxKey = key
        maxCount = count
      }
    }
    return { key: maxKey, count: maxCount }
  }

  const topStatus = getMostFrequent(statusState.occurrences)
  const topAction = getMostFrequent(actionState.occurrences)

  return {
    statusCodes: {
      totalResponses: Array.from(statusState.occurrences.values()).reduce(
        (a, b) => a + b,
        0
      ), // 5
      mostCommon: topStatus, // { key: "200", count: 3 }
      uniqueCodes: statusState.occurrences.size // 3
    },
    userActions: {
      totalActions: Array.from(actionState.occurrences.values()).reduce(
        (a, b) => a + b,
        0
      ), // 6
      mostCommon: topAction, // { key: "click", count: 3 }
      uniqueActions: actionState.occurrences.size // 3
    }
  }
})
```

**Signature**

```ts
export interface FrequencyState {
  readonly occurrences: ReadonlyMap<string, number>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L536)

Since v2.0.0