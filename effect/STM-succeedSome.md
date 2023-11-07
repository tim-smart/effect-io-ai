# succeedSome

Returns an effect with the optional value.

To import and use `succeedSome` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.succeedSome
```

**Signature**

```ts
export declare const succeedSome: <A>(value: A) => STM<never, never, Option.Option<A>>
```
