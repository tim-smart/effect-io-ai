# contains

Returns `true` if the `self` cause contains or is equal to `that` cause,
`false` otherwise.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const contains: {
  <E2>(that: Cause<E2>): <E>(self: Cause<E>) => boolean
  <E, E2>(self: Cause<E>, that: Cause<E2>): boolean
}
```
