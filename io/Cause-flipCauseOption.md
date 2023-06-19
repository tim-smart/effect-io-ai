# flipCauseOption

Converts the specified `Cause<Option<E>>` to an `Option<Cause<E>>` by
recursively stripping out any failures with the error `None`.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const flipCauseOption: <E>(self: Cause<Option.Option<E>>) => Option.Option<Cause<E>>
```
