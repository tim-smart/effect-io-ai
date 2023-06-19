# isFailure

Returns `true` if the specified `Exit` is a `Failure`, `false` otherwise.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const isFailure: <E, A>(self: Exit<E, A>) => self is Failure<E, A>
```
