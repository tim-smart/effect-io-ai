# frequency

Creates a metric key for a categorical frequency table, with the specified
name.

To import and use `frequency` from the "MetricKey" module:

```ts
import * as MetricKey from "effect/MetricKey"
// Can be accessed like this
MetricKey.frequency
```

**Signature**

```ts
export declare const frequency: (
  name: string,
  options?:
    | { readonly description?: string | undefined; readonly preregisteredWords?: ReadonlyArray<string> | undefined }
    | undefined
) => MetricKey.Frequency
```
