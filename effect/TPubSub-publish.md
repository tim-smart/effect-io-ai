## publish

Publishes a message to the `TPubSub`, returning whether the message was published
to the `TPubSub`.

**Signature**

```ts
declare const publish: { <A>(value: A): (self: TPubSub<A>) => STM.STM<boolean>; <A>(self: TPubSub<A>, value: A): STM.STM<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L134)

Since v2.0.0