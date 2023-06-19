# causeOption

Returns a `Some<Cause<E>>` if the specified exit is a `Failure`, `None`
otherwise.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const causeOption: <E, A>(self: Exit<E, A>) => Option.Option<Cause.Cause<E>>
```
