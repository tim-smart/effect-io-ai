# reduceWithContext

Reduces the specified cause into a value of type `Z` using a `Cause.Reducer`.
Also allows for accessing the provided context during reduction.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const reduceWithContext: {
  <C, E, Z>(context: C, reducer: CauseReducer<C, E, Z>): (self: Cause<E>) => Z
  <C, E, Z>(self: Cause<E>, context: C, reducer: CauseReducer<C, E, Z>): Z
}
```
