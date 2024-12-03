# sequential

Constructs a new `Sequential` cause from the specified pecified `left` and
`right` causes.

To import and use `sequential` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.sequential
```

**Signature**

```ts
export declare const sequential: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```
