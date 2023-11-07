# isInterrupted

Returns `true` if the specified exit is a `Failure` **and** the `Cause` of
the failure was due to interruption, `false` otherwise.

To import and use `isInterrupted` from the "Exit" module:

```ts
import * as Exit from 'effect/Exit'

// Can be accessed like this
Exit.isInterrupted
```

**Signature**

```ts
export declare const isInterrupted: <E, A>(self: Exit<E, A>) => boolean
```
