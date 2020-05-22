import * as Elm from 'elm-types'

export type Main = Elm.Document<Flags, Ports>

export type Flags = Scenarios

export type Scenarios = {
    current: string | null
    completed: string[]
    skipped: string[]
}

export type Ports = Elm.Ports<{
    storeScenarios: Elm.OutgoingPort<Scenarios>
}>