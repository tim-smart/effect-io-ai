# choiceWithValue

Constructs command-line `Options` that represent a choice between several
inputs. The input will be mapped to it's associated value during parsing.

To import and use `choiceWithValue` from the "Options" module:

ts
import \* as Options from "@effect/cli/Options"
// Can be accessed like this
Options.choiceWithValue
undefined

**Example**

```ts
import * as Options from "@effect/cli/Options"
import * as Data from "effect/Data"

export type Animal = Dog | Cat

export interface Dog {
  readonly _tag: "Dog"
}

export const Dog = Data.tagged<Dog>("Dog")

export interface Cat {
  readonly _tag: "Cat"
}

export const Cat = Data.tagged<Cat>("Cat")

export const animal: Options.Options<Animal> = Options.choiceWithValue("animal", [
  ["dog", Dog()],
  ["cat", Cat()]
])
```

**Signature**

```ts
export declare const choiceWithValue: <C extends ReadonlyArray<[string, any]>>(
  name: string,
  choices: C
) => Options<C[number][1]>
```
