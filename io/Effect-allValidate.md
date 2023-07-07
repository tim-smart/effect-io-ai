# allValidate

Runs all the provided effects in sequence respecting the structure provided
in input. The structure of any errors is also preserved.

Supports multiple arguments, a single argument tuple / array or record / struct.

To import and use `allValidate` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.allValidate
```

**Signature**

```ts
export declare const allValidate: All.Validate
```
