# interruptOption

Returns the `FiberId` associated with the first `Interrupt` in the specified
cause, if one exists.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const interruptOption: <E>(self: Cause<E>) => Option.Option<FiberId.FiberId>
```
