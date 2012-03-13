XCODE = xcodebuild
PROJECT = SBJson.xcodeproj
TARGETS = SBJson sbjson-ios
BUILD = build
CLEAN = clean

all: clean
	for t in $(TARGETS); do $(XCODE) -project $(PROJECT) -target $$t build; done
clean:
	for t in $(TARGETS); do $(XCODE) -project $(PROJECT) -target $$t clean; done
