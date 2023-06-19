# sequential

Constructs a new `Sequential` cause from the specified pecified `left` and
`right` causes.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const sequential: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```
