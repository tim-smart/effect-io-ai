# publish

Publishes a message to the `TPubSub`, returning whether the message was published
to the `TPubSub`.

To import and use `publish` from the "TPubSub" module:

ts
import \* as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.publish
undefined

**Signature**

```ts
export declare const publish: {
  <A>(value: A): (self: TPubSub<A>) => STM.STM<boolean>
  <A>(self: TPubSub<A>, value: A): STM.STM<boolean>
}
```
