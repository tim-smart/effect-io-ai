# cooperativeYielding

Returns `true` if the `CooperativeYielding` `RuntimeFlag` is enabled, `false`
otherwise.

To import and use `cooperativeYielding` from the "Flags" module:

```ts
import * as Flags from '@effect/io/Fiber/Runtime/Flags'

// Can be accessed like this
Flags.cooperativeYielding
```

**Signature**

```ts
export declare const cooperativeYielding: (self: RuntimeFlags) => boolean
```
