# feed

Feed a string to standard input (default encoding of UTF-8).

To import and use `feed` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.feed
```

**Signature**

```ts
export declare const feed: { (input: string): (self: Command) => Command; (self: Command, input: string): Command }
```
