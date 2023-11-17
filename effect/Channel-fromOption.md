# fromOption

Construct a `Channel` from an `Option`.

To import and use `fromOption` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.fromOption
```

**Signature**

```ts
export declare const fromOption: <A>(
  option: Option.Option<A>
) => Channel<never, unknown, unknown, unknown, Option.Option<never>, never, A>
```
