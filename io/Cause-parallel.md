# parallel

Constructs a new `Parallel` cause from the specified `left` and `right`
causes.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const parallel: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```
