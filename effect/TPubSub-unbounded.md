# unbounded

Creates an unbounded `TPubSub`.

To import and use `unbounded` from the "TPubSub" module:

```ts
import * as TPubSub from 'effect/TPubSub'

// Can be accessed like this
TPubSub.unbounded
```

**Signature**

```ts
export declare const unbounded: <A>() => STM.STM<never, never, TPubSub<A>>
```
