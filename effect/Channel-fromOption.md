# fromOption

Construct a `Channel` from an `Option`.

To import and use `fromOption` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromOption
undefined

**Signature**

```ts
export declare const fromOption: <A>(
  option: Option.Option<A>
) => Channel<never, unknown, Option.Option<never>, unknown, A, unknown>
```
