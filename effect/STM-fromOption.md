# fromOption

Lifts an `Option` into a `STM`.

To import and use `fromOption` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.fromOption
```

**Signature**

```ts
export declare const fromOption: <A>(option: Option.Option<A>) => STM<A, Option.Option<never>, never>
```
