process.env["ENV_FILE_PATH"] = __dirname + "/.env";

describe('TEST ALL MODULES', function () {

    it('should test the Agenda Module', function () {
        require("./Agenda/Test/index");
    });

    it('should test the Carpooling Module', function () {
        require("./Carpooling/Test/index");
    });

    it('should test the Rental Module', function () {
        require("./Rental/Test/index");
    });

});
