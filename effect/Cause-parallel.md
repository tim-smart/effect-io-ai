# parallel

Constructs a new `Parallel` cause from the specified `left` and `right`
causes.

To import and use `parallel` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.parallel
```

**Signature**

```ts
export declare const parallel: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```
