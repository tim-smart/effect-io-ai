# map

Maps over the `Success` value of the specified exit using the provided
function.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Exit<E, A>) => Exit<E, B>
  <E, A, B>(self: Exit<E, A>, f: (a: A) => B): Exit<E, B>
}
```
