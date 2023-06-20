# dieOption

Returns the defect associated with the first `Die` in this `Cause`, if one
exists.

To import and use `dieOption` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.dieOption
```

**Signature**

```ts
export declare const dieOption: <E>(self: Cause<E>) => Option.Option<unknown>
```
