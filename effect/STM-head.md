## head

Returns a successful effect with the head of the list if the list is
non-empty or fails with the error `None` if the list is empty.

**Signature**

```ts
declare const head: <A, E, R>(self: STM<Iterable<A>, E, R>) => STM<A, Option.Option<E>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1093)

Since v2.0.0