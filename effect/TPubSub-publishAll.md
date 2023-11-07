# publishAll

Publishes all of the specified messages to the `TPubSub`, returning whether they
were published to the `TPubSub`.

To import and use `publishAll` from the "TPubSub" module:

```ts
import * as TPubSub from 'effect/TPubSub'

// Can be accessed like this
TPubSub.publishAll
```

**Signature**

```ts
export declare const publishAll: {
  <A>(iterable: Iterable<A>): (self: TPubSub<A>) => STM.STM<never, never, boolean>
  <A>(self: TPubSub<A>, iterable: Iterable<A>): STM.STM<never, never, boolean>
}
```
