## takeFirst

Takes the first matching value, or retries until there is one.

**Signature**

```ts
declare const takeFirst: { <A, B>(pf: (a: A) => Option.Option<B>): (self: TSet<A>) => STM.STM<B>; <A, B>(self: TSet<A>, pf: (a: A) => Option.Option<B>): STM.STM<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L263)

Since v2.0.0