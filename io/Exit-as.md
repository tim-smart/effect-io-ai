# as

Maps the `Success` value of the specified exit to the provided constant
value.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const as: {
  <A2>(value: A2): <E, A>(self: Exit<E, A>) => Exit<E, A2>
  <E, A, A2>(self: Exit<E, A>, value: A2): Exit<E, A2>
}
```
