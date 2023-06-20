# die

Constructs a new `Die` cause from the specified `defect`.

To import and use `die` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => Cause<never>
```
