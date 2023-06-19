# isInterrupted

Returns `true` if the specified exit is a `Failure` **and** the `Cause` of
the failure was due to interruption, `false` otherwise.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const isInterrupted: <E, A>(self: Exit<E, A>) => boolean
```
