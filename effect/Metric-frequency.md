# frequency

Creates a Frequency metric to count occurrences of events.
Frequency metrics are used to count the number of times specific events or incidents occur.

To import and use `frequency` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.frequency
```

**Example**

```ts
import { Metric } from "effect"

const errorFrequency = Metric.frequency("error_frequency", {
  description: "Counts the occurrences of errors."
})
```

**Signature**

```ts
export declare const frequency: (
  name: string,
  options?:
    | { readonly description?: string | undefined; readonly preregisteredWords?: ReadonlyArray<string> | undefined }
    | undefined
) => Metric.Frequency<string>
```
