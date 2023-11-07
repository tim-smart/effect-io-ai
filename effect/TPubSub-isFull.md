# isFull

Returns `true` if the `TPubSub` contains at least one element, `false`
otherwise.

To import and use `isFull` from the "TPubSub" module:

```ts
import * as TPubSub from 'effect/TPubSub'

// Can be accessed like this
TPubSub.isFull
```

**Signature**

```ts
export declare const isFull: <A>(self: TPubSub<A>) => STM.STM<never, never, boolean>
```
