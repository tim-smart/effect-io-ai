Package: `@effect/atom-react`<br />
Module: `ScopedAtom`<br />

## ScopedAtom.make

Creates a ScopedAtom from a factory function.

**When to use**

Use to create an atom instance that is owned by a React provider and scoped
to a component subtree.

**Details**

The returned scoped atom includes a `Provider`, `Context`, and `use`
accessor. The provider creates the atom once for its lifetime, passing the
`value` prop to the factory when the scoped atom expects input.

**Gotchas**

`use` must run under the matching provider. Changing the provider `value`
prop after mount does not recreate the atom.

**Example** (Creating a scoped atom with input)

```ts
import { make, useAtomValue } from "@effect/atom-react"
import { Atom } from "effect/unstable/reactivity"
import * as React from "react"

const User = make((name: string) => Atom.make(name))

function UserName() {
  const atom = User.use()
  const value = useAtomValue(atom)
  return React.createElement("span", null, value)
}

export function App() {
  return React.createElement(
    User.Provider,
    { value: "Ada" },
    React.createElement(UserName)
  )
}
```

**Signature**

```ts
declare const make: <A extends Atom.Atom<any>, Input = never>(f: (() => A) | ((input: Input) => A)) => ScopedAtom<A, Input>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/ScopedAtom.ts#L132)

Since v4.0.0