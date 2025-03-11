## publishAll

Publishes all of the specified messages to the `TPubSub`, returning whether they
were published to the `TPubSub`.

**Signature**

```ts
declare const publishAll: { <A>(iterable: Iterable<A>): (self: TPubSub<A>) => STM.STM<boolean>; <A>(self: TPubSub<A>, iterable: Iterable<A>): STM.STM<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L146)

Since v2.0.0