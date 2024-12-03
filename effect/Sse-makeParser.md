# makeParser

Create a SSE parser.

Adapted from https://github.com/rexxars/eventsource-parser under MIT license.

To import and use `makeParser` from the "Sse" module:

```ts
import * as Sse from "@effect/experimental/Sse"
// Can be accessed like this
Sse.makeParser
```

**Signature**

```ts
export declare function makeParser(onParse: (event: AnyEvent) => void): Parser
```
