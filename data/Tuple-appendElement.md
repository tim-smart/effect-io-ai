# appendElement

Appends an element to the end of a tuple.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Signature**

```ts
export declare const appendElement: {
  <B>(that: B): <A extends readonly unknown[]>(self: A) => [...A, B]
  <A extends readonly unknown[], B>(self: A, that: B): [...A, B]
}
```
