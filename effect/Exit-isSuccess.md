# isSuccess

Returns `true` if the specified `Exit` is a `Success`, `false` otherwise.

To import and use `isSuccess` from the "Exit" module:

```ts
import * as Exit from 'effect/Exit'

// Can be accessed like this
Exit.isSuccess
```

**Signature**

```ts
export declare const isSuccess: <E, A>(self: Exit<E, A>) => self is Success<E, A>
```
