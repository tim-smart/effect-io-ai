# fromOption

Converts an `Option` into a `Micro` effect, that will fail with
`NoSuchElementException` if the option is `None`. Otherwise, it will succeed with the
value of the option.

To import and use `fromOption` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.fromOption
```

**Signature**

```ts
export declare const fromOption: <A>(option: Option.Option<A>) => Micro<A, NoSuchElementException>
```
