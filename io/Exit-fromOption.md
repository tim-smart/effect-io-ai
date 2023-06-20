# fromOption

Converts an `Option<A>` into an `Exit<void, A>`.

To import and use `fromOption` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.fromOption
```

**Signature**

```ts
export declare const fromOption: <A>(option: Option.Option<A>) => Exit<void, A>
```
