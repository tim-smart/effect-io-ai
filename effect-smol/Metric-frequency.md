Package: `effect`<br />
Module: `Metric`<br />

## Metric.frequency

Creates a `Frequency` metric which can be used to count the number of
occurrences of a string.

Frequency metrics are most suitable for counting the number of times a
specific event or incident occurs.

**Options**

- `description` - A description of the `Frequency`.
- `attributes`  - The attributes to associate with the `Frequency`.
- `preregisteredWords` - Occurrences which are pre-registered with the
                         `Frequency` metric occurrences.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class FrequencyError extends Data.TaggedError("FrequencyError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create a frequency metric for HTTP status codes
  const statusFrequency = Metric.frequency("http_status_codes", {
    description: "Frequency of HTTP response status codes",
    preregisteredWords: ["200", "404", "500"] // Pre-register common codes
  })

  // Create a frequency metric for user actions
  const userActionFrequency = Metric.frequency("user_actions", {
    description: "Frequency of user actions performed",
    attributes: { application: "web-app" }
  })

  // Create a frequency metric for error types
  const errorTypeFrequency = Metric.frequency("error_types", {
    description: "Frequency of different error types"
  })

  // Record different occurrences
  yield* Metric.update(statusFrequency, "200") // Success response
  yield* Metric.update(statusFrequency, "200") // Another success
  yield* Metric.update(statusFrequency, "404") // Not found error
  yield* Metric.update(statusFrequency, "500") // Server error
  yield* Metric.update(statusFrequency, "200") // Another success

  yield* Metric.update(userActionFrequency, "login")
  yield* Metric.update(userActionFrequency, "view_dashboard")
  yield* Metric.update(userActionFrequency, "login")
  yield* Metric.update(userActionFrequency, "logout")

  yield* Metric.update(errorTypeFrequency, "ValidationError")
  yield* Metric.update(errorTypeFrequency, "NetworkError")
  yield* Metric.update(errorTypeFrequency, "ValidationError")

  // Get frequency counts
  const statusCounts = yield* Metric.value(statusFrequency)
  const actionCounts = yield* Metric.value(userActionFrequency)
  const errorCounts = yield* Metric.value(errorTypeFrequency)

  // statusCounts.occurrences will be:
  // Map { "200" => 3, "404" => 1, "500" => 1 }
  // actionCounts.occurrences will be:
  // Map { "login" => 2, "view_dashboard" => 1, "logout" => 1 }
  // errorCounts.occurrences will be:
  // Map { "ValidationError" => 2, "NetworkError" => 1 }

  return { statusCounts, actionCounts, errorCounts }
})
```

**Signature**

```ts
declare const frequency: (name: string, options?: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly preregisteredWords?: ReadonlyArray<string> | undefined; }) => Frequency
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2403)

Since v2.0.0