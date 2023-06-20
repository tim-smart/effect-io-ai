# keepDefects

Remove all `Fail` and `Interrupt` nodes from the specified cause, and return
a cause containing only `Die` cause/finalizer defects.

To import and use `keepDefects` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.keepDefects
```

**Signature**

```ts
export declare const keepDefects: <E>(self: Cause<E>) => Option.Option<Cause<never>>
```
