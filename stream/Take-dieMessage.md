# dieMessage

Creates a failing `Take` with the specified error message.

To import and use `dieMessage` from the "Take" module:

```ts
import * as Take from '@effect/stream/Take'

// Can be accessed like this
Take.dieMessage
```

**Signature**

```ts
export declare const dieMessage: (message: string) => Take<never, never>
```
