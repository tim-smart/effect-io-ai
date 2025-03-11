## frequency

Creates a Frequency metric to count occurrences of events.
Frequency metrics are used to count the number of times specific events or incidents occur.

**Example**

```ts
import { Metric } from "effect"

const errorFrequency = Metric.frequency("error_frequency", {
   description: "Counts the occurrences of errors."
});
```

**Signature**

```ts
declare const frequency: (name: string, options?: { readonly description?: string | undefined; readonly preregisteredWords?: ReadonlyArray<string> | undefined; } | undefined) => Metric.Frequency<string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L221)

Since v2.0.0