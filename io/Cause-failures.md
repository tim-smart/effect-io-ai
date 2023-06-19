# failures

Returns a `List` of all recoverable errors of type `E` in the specified
cause.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const failures: <E>(self: Cause<E>) => Chunk.Chunk<E>
```
