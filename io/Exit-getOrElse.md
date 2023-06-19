# getOrElse

Returns the `A` if specified exit is a `Success`, otherwise returns the
alternate `A` value computed from the specified function which receives the
`Cause<E>` of the exit `Failure`.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const getOrElse: {
  <E, A>(orElse: (cause: Cause.Cause<E>) => A): (self: Exit<E, A>) => A
  <E, A>(self: Exit<E, A>, orElse: (cause: Cause.Cause<E>) => A): A
}
```
