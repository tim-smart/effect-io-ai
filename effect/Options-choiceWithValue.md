## choiceWithValue

Constructs command-line `Options` that represent a choice between several
inputs. The input will be mapped to it's associated value during parsing.

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
  ["cat", Cat()],
])
```

**Signature**

```ts
declare const choiceWithValue: <C extends ReadonlyArray<[string, any]>>(name: string, choices: C) => Options<C[number][1]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Options.ts#L208)

Since v1.0.0